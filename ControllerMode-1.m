function ControllerMode(motorA,motorB,motorC)
    %CONTROLLERMODE Places the vehicle in the keyboard control state until
    %the esc key is pressed
    
    global intensity;
    global color;
    
    fprintf('Vehicle is now in controller mode\n');
    fprintf('Use the arrow keys for navigation.\nThe u and d keys raise and lower the bar respectively.\n');
    fprintf('Press the escape key to proceed exit.\n');
    
    while KbCheck; end % Wait until all keys are released.
    while 1
        [ keyIsDown, seconds, keyCode ] = KbCheck;
        keyCode = find(keyCode, 1);
        if keyIsDown
            switch keyCode
                case 82
                    fprintf('Up\n');
                    stop(motorC);
                    motorA.Speed = 30;
                    motorB.Speed = 30;
                    start(motorA);
                    start(motorB);
                case 81
                    fprintf('Down\n');
                    stop(motorC);
                    motorA.Speed = -30;
                    motorB.Speed = -30;
                    start(motorA);
                    start(motorB);
                case 80
                    fprintf('Left\n');
                    stop(motorC);
                    motorA.Speed = -30;
                    motorB.Speed = 30;
                    start(motorA);
                    start(motorB);
                case 79
                    fprintf('Right\n');
                    stop(motorC);
                    motorA.Speed = 30;
                    motorB.Speed = -30;
                    start(motorA);
                    start(motorB);
                case 24
                    fprintf('Raise bar\n');
                    stop(motorC);
                    stop(motorA);
                    stop(motorB);
                    motorC.Speed = 20;
                    start(motorC);
                    
                case 7
                    fprintf('Lower bar\n');
                    stop(motorA);
                    stop(motorB);
                    motorC.Speed = -20;
                    start(motorC);
                case 41
                    fprintf('Exit keyboard Control\n');
                    stop(motorA);
                    stop(motorB);
                    stop(motorC);
                    break;
                otherwise
                    fprintf('Invalid keypress\n');
                    stop(motorA);
                    stop(motorB);
                    stop(motorC);
            end
            KbReleaseWait;
        else
            stop(motorA);
            stop(motorB);
        end   
    end
end
