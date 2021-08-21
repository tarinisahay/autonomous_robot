function State = SensorState(intensity)
    if(intensity == "white")
        State = 'Table';
    elseif(intensity == "black")
        State = 'Line';
    elseif(intensity == "blue")
        State = 'Pickup';
    elseif(intensity == "yellow")
        State = 'Dropoff';
    elseif(intensity == "red")
        State = 'Stop';
    else
        State = 'Null';
    end
end
