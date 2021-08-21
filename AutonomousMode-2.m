function AutonomousMode(motorA,motorB, colorSensor)
    global intensity;
    global color
    
    
    while 1
       pause(.05)

       intensity = readColor(colorSensor);
       color = SensorState(intensity);
       stop(motorA);
       stop(motorB);
       switch color

           case 'Line'
               disp(color);
               motorB.Speed = 20;
               start(motorB);
               pause(.5)

           case 'Table'
               disp(color);
               motorA.Speed = 20;
               motorB.Speed = 10;
               start(motorA);
               start(motorB);

           case 'Pickup'
               disp(color);
               stop(motorA);
               stop(motorB);
               break;
               
           case 'Stop'
               disp(color);
               stop(motorA);
               stop(motorB);
               break;
               
           case 'Dropoff'
               disp(color);
               stop(motorA);
               stop(motorB);
               break;

           case 'Null'
               disp("Null Sensor Value !");
       end
    end
end
