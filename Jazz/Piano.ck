// piano.ck
// sound chain
Rhodey piano[4];
piano[0] => dac.left;
piano[1] => dac; 
piano[2] => dac;
piano[3] => dac.right; 

0.3 => piano[0].gain;
0.1 => piano[1].gain;
0.1 => piano[2].gain;
0.3 => piano[3].gain;


// Cmaj7 48 52 55 59
// Dmin7 62 65 69 72
// Emin7 64 67 71 62
// Fmaj7 53 57 60 64
// Gmaj7 67 71 62 53
// Amin7 69 60 64 67
// Bmin7flat5 71 62 53 69

// chord 2D array
[[48,52,55,59],[62,65,69,72],[64,67,71,62],[53,57,60,64],[67,71,62,53],[69,60,64,67],[71,62,53,69]] @=> int chordz[][];

// loop 
while( true )  
{
    Math.random2(0,6) => int random1;
    Math.random2(0,6) => int random2;
    
    0.5::second => now;
    
    for( 0 => int i; i < 4; i++ )  
    {
        Std.mtof(chordz[random1][i]) => piano[i].freq;
        Math.random2f(0.3,.7) => piano[i].noteOn;
    }
    1.0 :: second => now;
    // build second chord
    for( 0 => int i; i < 4; i++ )  
    {
        Math.mtof(chordz[random2][i]) => piano[i].freq;
        Math.random2f(0.3,.7) => piano[i].noteOn;
    }
    1.0 :: second => now;
    
    for( 0 => int i; i < 4; i++ )  
    {
        Std.mtof(chordz[random1][i]) => piano[i].freq;
        Math.random2f(0.3,.7) => piano[i].noteOn;
    }
    1.0 :: second => now;

}
