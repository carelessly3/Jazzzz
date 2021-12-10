//Set your Chuck directory to "McBride_6", wherever you've put that folder, and this program should work fine.

Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/SwingCounter.ck") => int ID1;//Universal counter
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/A6ChordProg.ck") => int ID2;//Universal chord progression
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Drummer.ck") => int ID3;//Drums enter solo

10::second => now;//Play for 13 seconds

Machine.remove(ID3);//Cut out

0.2::second => now;//Pause

Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Drummer.ck") => int ID7;//Drums come in with
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Bassist.ck") => int ID4;//Bass
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/bass.ck") => int ID10;//Bass

10::second => now;//Play for 10 seconds

Machine.remove(ID7);//Cut
Machine.remove(ID4);//out
Machine.remove(ID10);//out


0.3::second => now;//Pause

Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Drummer.ck") => int ID8;//Drums come back in
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Bassist.ck") => int ID9;//with bass
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Rhodeschords.ck") => int ID5;//chord comping
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Soloist.ck") => int ID6;//And a soloist.
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/Piano.ck") => int ID11;//And a soloist.
Machine.add ("C:/Users/2002g/Documents/Devesh/School+College/Fall Sem 2021-2022 (third)/CSE-3013 AI/Project/Jazz/bass.ck") => int ID12;//And a soloist.

60::second => now;//Play til the end.

    Machine.remove(ID8);//Cut out
    Machine.remove(ID9);
    Machine.remove(ID5);
    Machine.remove(ID6);
    Machine.remove(ID11);
    Machine.remove(ID12);


    
public class SetUniversalParameters//Allows tempo and key to be set from master file.
{
    200 => float Tempo;
    45 => int Tonic;
}