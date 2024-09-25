function WaterAmount = MainProjectSourceCode
    a = arduino("COM6", "Nano3");

    figure
    h = animatedline;
    ax.YGrid = 'on';
    ax.YLim = [-0.1 5];
    title('Live Graph of Wetness vs Time');
    ylabel('Wetness');
    xlabel('Time');

    stop = false;
    startTime = datetime("now");

    while ~stop
        Voltage = readVoltage(a, 'A1');
        WaterAmount = ((16/(-0.6305)) * Voltage) + 86.8777;
        Time = datetime('now') - startTime;
        addpoints(h, datetime(Time), WaterAmount);
        ax.XLim = datetime([Time-seconds(2) Time]);
        datetick('x', 'keeplimits');
        drawnow;
    end

    for i = 1:Voltage
        if(readVoltage(a, 'A1') > 3)
            disp("Too Dry! Wet Plant Now!");
            disp("Turning on Pump");
            writeDigitalPin(a, "D2", 1);
        end
    end

    for i = 1:1:Voltage
        if(readVoltage(a, "A1") > 3)
            disp("Too Dry! Wet Plant Now!");
            disp("Turning on Pump");
            writeDigitalPin(a, "D2", 1);
        elseif (readVoltage(a, 'A1') > 2.7)
            disp("Not Wet Enough");
            writeDigitalPin(a, "D2", 1);
            disp("Keep pump on");
        elseif (readVoltage(a, 'A1') > 2.5)
            disp("Wet Enough");
            writeDigitalPin(a, "D2", 0);
            disp("Turning pump off");
            pause(3600);
        end
    end

    stop = readDigitalPin(a, "D6");
    writeDigitalPin(a, "D2", 0);
end
