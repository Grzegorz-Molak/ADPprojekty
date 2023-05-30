clear
badana = [[28,21,24,21,19,22,22,28,32,22,20]
    [2430,1900,1950,2350,2250,2230,2300,1800,2190,2050,2400]
    [254,228,224,263,271,255,242,210,235,253,242]
    [2.0,4.0,2.0,3.0,2.5,1.5,1.5,4.0,2.5,3.0,3.0]];
kontrolna = [[25,17,25,21,24,18,18,32,35,33,22,32,30,28,27,24,19,25,28,34]
    [2300,1800,2500,2400,2090,2300,2000,2230,2100,2300,2230,1440,2150,2100,2400,2100,2450,1850,2480,2450]
    [247,262,273,263,291,272,272,273,278,273,270,206,261,260,273,275,277,246,246,266]
    [1.0,2.5,0.0,1.0,2.0,2.0,2.5,2,2,2,1.5,2.5,2,2,1.5,1.5,1,2.5,2,2]];
T2cale = tkwadrat(badana, kontrolna);
t2pojedynczych = [tkwadrat(badana(1,:), kontrolna(1,:))
    tkwadrat(badana(2,:), kontrolna(2,:)) 
tkwadrat(badana(3,:), kontrolna(3,:))
tkwadrat(badana(4,:), kontrolna(4,:))];
t2podwojnych = [tkwadrat(badana([1,4],:), kontrolna([1,4],:))
    tkwadrat(badana([2,4],:), kontrolna([2,4],:))
    tkwadrat(badana([3,4],:), kontrolna([3,4],:))
    ];
t2potrojnych = [tkwadrat(badana([4,2,1],:), kontrolna([4,2,1],:))
    tkwadrat(badana([4,2,3],:), kontrolna([4,2,3], :))
    ];


