// bass.ck
// sound chain (mandolin for bass)
Mandolin bass => NRev r => dac;

// shared jazz scale data
[48,50,52,53,55,57,59,60,62,64,65] @=> int scale[]; 

// parameter setup
0.1 => r.mix;
0.0 => bass.stringDamping;
0.02 => bass.stringDetune;
0.05 => bass.bodySize;
4 => int walkPos;
.05 => bass.gain;

// loop
while( true )  
{
    Math.random2(-1,1) +=> walkPos; 
    if (walkPos < 0) 1 => walkPos;
    if (walkPos >= scale.cap()) scale.cap()-2 => walkPos;
    Std.mtof(scale[walkPos]-12) => bass.freq;
    Math.random2f(0.05,0.5) => bass.pluckPos;
    1 => bass.noteOn;
    0.55 :: second => now;
    1 => bass.noteOff;
    0.05 :: second => now;
}


