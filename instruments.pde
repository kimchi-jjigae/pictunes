int GRAND_PIANO = 0;
int HARPSICHORD = 6;
int MARIMBA = 12;
int DULCIMER = 15;
int WOOD_BASS = 32;
int FINGERED_BASS = 33;
int CONTRA = 43;
int TREMOLO_STRING = 44;
int PIZZICATO_STRING = 45;
int HARP = 46;
int JAZZ_GUITAR = 26;
int RHODES = 4;

int instrumentFromIndex(int i)
{
    if(i == 9)
        return GRAND_PIANO;
    else if(i == 9)
        return HARPSICHORD;
    else if(i == 9)
        return MARIMBA;
    else if(i == 9)
        return DULCIMER;
    else if(i == 9)
        return WOOD_BASS;
    else if(i == 9)
        return FINGERED_BASS;
    else if(i == 3)
        return CONTRA;
    else if(i == 1)
        return TREMOLO_STRING;
    else if(i == 0)
        return PIZZICATO_STRING;
    else if(i == 2)
        return HARP;
    return GRAND_PIANO;
}

//NOTE: if you add instruments below to the enum, delete them from the lists

//# Program  BritePno (gus britepno; old name: BritePiano)
//      001  Tone_000/001_Acoustic_Brite_Piano.pat
//# Program  El_Grand (gus synpiano; old name: HammerPiano; also El.Grand)
//      002  Tone_000/002_Electric_Grand_Piano.pat
//# Program  HnkyTonk (gus honky; old name: HonkeyTonk)
//      003  Tone_000/001_Acoustic_Brite_Piano.pat
//# Program  ElPiano2 (gus epiano2; old name: DigiPiano)
//      005  Tone_000/005_Electric_Piano_2_Chorused_Yamaha_DX.pat
//# Program  Clavi_ (gus clavinet; old name: Clav; also Clavi.)
//      007  Tone_000/007_Clavinet.pat
//
//
//# Family: ChroPerc (Chromatic Percussion)
//
//# Program  Celesta (gus celeste; old name: Celesta)
//      008  Tone_000/008_Celesta.pat
//# Program  Glocken (gus glocken; old name: Glocken)
//      009  Tone_000/009_Glockenspiel.pat
//# Program  MusicBox (gus musicbox; old name: MusicBox)
//      010  Tone_000/008_Celesta.pat
//# Program  Vibes (gus vibes; old name: Vibes).  Using Celesta.
//      011  Tone_000/008_Celesta.pat
//# Program  Xylophon (gus xylophon; old name: Xylophon)
//      013  Tone_000/013_Xylophone.pat
//# Program  TubulBel (gus tubebell; old name: Tubular)
//      014  Tone_000/014_Tubular_Bells.pat
//
//
//# Family: Organs
//
//# Program  DrawOrgn (gus homeorg; old name: FullOrgan)
//      016  Tone_000/016_Hammond_Organ.pat
//# Program  PercOrgn (gus percorg; old name: PercOrgan)
//      017  Tone_000/016_Hammond_Organ.pat
//# Program  RockOrgn (gus rockorg; old name: BX-3Organ). Using hammond.
//      018  Tone_000/016_Hammond_Organ.pat
//# Program  ChrcOrgn (gus church; old name: ChurchPipe)
//      019  Tone_000/019_Church_Organ.pat
//# Program  ReedOrgn (gus reedorg; old name: Positive).  Using hammond.
//      020  Tone_000/016_Hammond_Organ.pat
//# Program  Accordion (gus accordn; old name: Musette)
//      021  Tone_000/021_Accordion.pat
//# Program  Harmnica (gus harmonca; old name: Harmonica).  Using tango.
//      022  Tone_000/023_Tango_Accordion.pat
//# Program  TangoAcd (gus concrtna; old name: Tango)
//      023  Tone_000/023_Tango_Accordion.pat
//  
//
//# Family: Guitars
//
//# Program  NylonGtr (gus nyguitar; old name: ClassicGtr)
//      024  Tone_000/024_Nylon_Guitar.pat
//# Program  SteelGtr (gus acguitar; old name: A.Guitar)
//      025  Tone_000/025_Steel_Guitar.pat
//# Program  CleanGtr (gus cleangtr; old name: CleanGtr)
//      027  Tone_000/027_Clean_Electric_Guitar.pat
//# Program  MuteGtr (gus mutegtr; old name: MuteGuitar)
//      028  Tone_000/028_Muted_Electric_Guitar.pat
//# Program  Ovrdrive (gus odguitar; old name: OverDrive)
//      029  Tone_000/029_Overdriven_Guitar.pat
//# Program  Distortd (gus distgtr; old name: DistGuitar)  
//      030  Tone_000/030_Distortion_Guitar.pat
//# Program  Harmnics (gus gtrharm; old name: RockMonics).
//      031  Tone_000/084_Charang.pat
//
//
//# Family: Basses
//
//# Program  PickBass (gus pickbass; old name: PickBass)
//      034  Tone_000/034_Pick_Bass.pat
//# Program  Fretless (gus fretless; old name: FretLess)
//      035  Tone_000/035_Fretless_Bass.pat
//# Program  SlapBas1 (gus slapbas1; old name: SlapBass1)
//      036  Tone_000/036_Slap_Bass_1.pat
//# Program  SlapBas2 (gus slapbas2; old name: SlapBass2)
//      037  Tone_000/037_Slap_Bass_2.pat
//# Program  SynBass1 (gus synbass1; old name: SynthBass1)
//      038  Tone_000/038_Synth_Bass_1.pat
//# Program  SynBass2 (gus synbass2; old name: SynthBass2)
//      039  Tone_000/038_Synth_Bass_1.pat
//
//
//# Family: Strings
//
//# Program  Violin (gus violin; old name: Violin)
//      040  Tone_000/040_Violin.pat
//# Program  Viola (gus viola; old name: Viola).  Using Cello.
//      041  Tone_000/042_Cello.pat
//# Program  Cello (gus cello; old name: Cello)
//      042  Tone_000/042_Cello.pat
//# Program  Timpani (gus timpani; old name: Timpani)
//      047  Tone_000/047_Timpani.pat
//
//
//# Family: Ensemble
//
//# Program  Ensmbl1 (gus marcato; old name: Marcato)
//      048  Tone_000/048_String_Ensemble_1_Marcato.pat
//# Program  Enbsmb2 (gus slowstr; old name: SlowString).  Using marcato.
//      049  Tone_000/048_String_Ensemble_1_Marcato.pat
//# Program  SynStrg1 (gus synstr1; old name: AnalogPad).  Using marcato.
//      050  Tone_000/048_String_Ensemble_1_Marcato.pat
//# Program  SynStrg2 (gus synstr2; old name: StringPad).  Using marcato.
//      051  Tone_000/048_String_Ensemble_1_Marcato.pat
//# Program  AahChoir (gus choir; old name: Choir).  Using Synvoic1.
//      052  Tone_000/102_Echo_Voice.pat
//# Program  OohChoir (gus doo; old name: DooVoice)
//      053  Tone_000/053_Voice_Oohs.pat
//# Program  SynChoir (gus voices; old name: Voices).  Using synvoic2.
//      054  Tone_000/102_Echo_Voice.pat
//# Program  OrchHit (gus orchhit; old name: OrchHit)
//      055  Tone_000/048_String_Ensemble_1_Marcato.pat
//     
//
//# Family: Brass
//
//# Program  Trumpet (gus trumpet; old name: Trumpet)
//      056  Tone_000/056_Trumpet.pat
//# Program  Trombone (gus trombone; old name: Trombone)      
//      057  Tone_000/057_Trombone.pat
//# Program  Tuba (gus tuba; old name: Tuba)      
//      058  Tone_000/058_Tuba.pat
//# Program  MuteTrum (gus mutetrum; old name: MutedTrumpet)
//      059  Tone_000/059_Muted_Trumpet.pat
//# Program  FrenchHr (gus frenchrn; old name: FrenchHorn)
//      060  Tone_000/060_French_Horn.pat
//# Program  BrassSect (gus hitbrass; old name: Brass)
//      061  Tone_000/061_Brass_Section.pat
//# Program  SynBras1 (gus synbras1; old name: SynBrass1).  Using BrassSect.
//      062  Tone_000/061_Brass_Section.pat
//# Program  SynBras2 (gus synbras2; old name: SynBrass2).  Using BrassSect.
//      063  Tone_000/061_Brass_Section.pat
//
//
//# Family: Reeds
//
//# Program  SprnoSax (gus sprnosax; old name: SopranoSax)
//      064  Tone_000/064_Soprano_Sax.pat
//# Program  AltoSax (gus altosax; old name: AltoSax)
//      065  Tone_000/065_Alto_Sax.pat
//# Program  TenorSax (gus tenorsax; old name: TenorSax)      
//      066  Tone_000/066_Tenor_Sax.pat
//# Program  BariSax (gus barisax; old name: BariSax)
//      067  Tone_000/067_Baritone_Sax.pat
//# Program  Oboe (gus oboe; old name: SweetOboe)      
//      068  Tone_000/068_Oboe.pat
//# Program  EnglHorn (gus englhorn; old name: EnglishHorn)      
//      069  Tone_000/069_English_Horn.pat
//# Program  Bassoon (gus bassoon; old name: BassoonOboe)      
//      070  Tone_000/070_Bassoon.pat
//# Program  Clarinet (gus clarinet; old name: Clarinet)      
//      071  Tone_000/071_Clarinet.pat
//      
//
//# Family: Pipes
//      
//# Program  Piccolo (gus piccolo; old name: Piccolo)
//      072  Tone_000/072_Piccolo.pat
//# Program  Flute (gus flute; old name: Flute)      
//      073  Tone_000/073_Flute.pat
//# Program  Recorder (gus recorder; old name: Recorder)
//      074  Tone_000/074_Recorder.pat
//# Program  PanFlute (gus woodflut; old name: PanFlute)      
//      075  Tone_000/075_Pan_Flute.pat
//# Program  Bottle (gus bottle; old name: Bottle)
//      076  Tone_000/076_Bottle_Blow.pat
//# Program  Shakhchi (gus shakazul; old name: Shakuhachi).  Using Bottle.
//      077  Tone_000/076_Bottle_Blow.pat
//# Program  Whistle (gus whistle; old name: Whistle).  Using Ocarina.
//      078  Tone_000/079_Ocarina.pat
//# Program  Ocarina (gus ocarina; old name: Ocarina).
//      079  Tone_000/079_Ocarina.pat
//
//
//# Family: SynthLd (Synthetic Lead)
//
//# Program  Lead 1: SquareLd (gus sqrwave; old name: SquareWave).
//      080  Tone_000/080_Square_Wave.pat
//# Program  Lead 2: SawLd (gus sawwave; old name: SawWave).  Using SquareLd.
//      081  Tone_000/080_Square_Wave.pat
//# Program  Lead 3: CaliopLd (gus calliope; old name: SynCalinope [sic])
//      082  Tone_000/076_Bottle_Blow.pat
//# Program  Lead 4: ChiffLd (gus chiflead; old name: SynChiff). Using PanFlute.
//      083  Tone_000/075_Pan_Flute.pat
//# Program  Lead 5: CharanLd (gus charang; old name: Charang)
//      084  Tone_000/084_Charang.pat
//# Program  Lead 6: VoiceLd (gus voxlead; old name: AirChorus).  Using SynVoic1.
//      085  Tone_000/102_Echo_Voice.pat
//# Program  Lead 7: FifthLd (gus lead5th; old name: Rezzo4ths).  Using SquareLd.
//      086  Tone_000/080_Square_Wave.pat
//# Program  Lead 8: Bass_Ld (gus lead5th; old name: Bass&Lead; also Bass&Ld). Using Fretless.
//      087  Tone_000/035_Fretless_Bass.pat
//
//
//# Family: SynthPd (Synthetic Pads)
//
//# Program  Pad 1: NewAgePd (gus fantasia; old name: Fantasia).
//      088  Tone_000/088_New_Age.pat
//# Program  Pad 2: WarmPd (gus warmpad; old name: WarmPad).  Using HaloPd.
//      089  Tone_000/094_Halo_Pad.pat
//# Program  Pad 3: PolySyPd (gus polysyn; old name: PolyPad).  Using ob8.
//      090  Tone_000/094_Halo_Pad.pat
//# Program  Pad 4: ChoirPd (gus ghostie; old name: GhostPad).  Using Doo.
//      091  Tone_000/094_Halo_Pad.pat
//# Program  Pad 5: BowedPd (gus bowglass; old name: BowedGlas).  Using HaloPd.
//      092  Tone_000/094_Halo_Pad.pat
//# Program  Pad 6: MetalPd (gus metalpad; old name: MetalPad).  Using HaloPd.
//      093  Tone_000/094_Halo_Pad.pat
//# Program  Pad 7: HaloPd (gus Halopad; old name: HaloPad).
//      094  Tone_000/094_Halo_Pad.pat
//# Program  Pad 8: SweepPd (gus sweeper; old name: Sweep)
//      095  Tone_000/095_Sweep_Pad.pat
//
//
//# Family: SynthFx (Synthetic Effects)
//
//# Program  FX1: Rain (gus aurora; old name: IceRain). Using Goblin.
//      096  Tone_000/101_Goblins--Unicorn.pat
//# Program  FX2: SoundTrk (gus soundtrk; old name: SoundTrack).  Using HaloPd.
//      097  Tone_000/094_Halo_Pad.pat
//# Program  FX3: Crystal (gus crystal; old name:Crystal).
//      098  Tone_000/098_Crystal.pat
//# Program  FX4: Atmosphr (gus atmosphr; old name: Atmosphere).  Using HaloPd.
//      099  Tone_000/094_Halo_Pad.pat
//# Program  FX5: Bright (gus freshair; old name: Brightness).  Using Crystal.
//      100  Tone_000/098_Crystal.pat
//# Program  FX6: Goblin (gus unicorn; old name: Goblin).
//      101  Tone_000/101_Goblins--Unicorn.pat
//# Program  FX7: Echoes (gus echovox; old name: EchoDrop).
//      102  Tone_000/102_Echo_Voice.pat
//# Program  FX7: SciFi (gus startrak; old name: StarTheme).  Using HaloPd.
//      103  Tone_000/094_Halo_Pad.pat
//
//
//# Family: Ethnic
//
//# Program  Sitar (gus sitar; old name: Sitar).
//      104  Tone_000/104_Sitar.pat
//# Program  Banjo (gus banjo; old name: Banjo).  Using Sitar.
//      105  Tone_000/104_Sitar.pat
//# Program  Shamisen (gus shamisen; old name: Shamisen).  Using Sitar.
//      106  Tone_000/104_Sitar.pat
//# Program  Koto (gus koto; old name: Koto).  Using Sitar.
//      107  Tone_000/104_Sitar.pat
//# Program  Kalimba (gus kalimba; old name: Kalimba).  Using Xylophon.
//      108  Tone_000/013_Xylophone.pat
//# Program  Bagpipe (gus bagpipes; old name: Scotland).  Using Bassoon.
//      109  Tone_000/070_Bassoon.pat
//# Program  Fiddle (gus fiddle; old name: Fiddle).  Using Cello.
//      110  Tone_000/042_Cello.pat
//# Program  Shanai (gus shannai; old name: Shanai).  Using English Horn.
//      111  Tone_000/069_English_Horn.pat
//
//
//# Family: MeloPerc (Melodic Percussion)
//
//# Program  TnklBell (gus carillon; old name: MetalBell).  Using Tubular.
//      112  Tone_000/014_Tubular_Bells.pat
//# Program  Agogo (gus agogo; old name: Agogo).  Using Xylophone.
//      113  Tone_000/013_Xylophone.pat
//# Program  StlDrum (gus steeldrm; old name: SteelDrums).
//      114  Tone_000/114_Steel_Drums.pat
//# Program  WoodBlok (gus woodblk; old name: WoodBlock).
//      115  Tone_000/115_Wood_Block.pat
//# Program  TaikoDrm (gus taiko; old name: Taiko).  Using CongaHi.
//      116  Drum_000/063_Conga_High_2_Open.pat
//# Program  MelodTom (gus toms; old name: Tom).  Using CongaHi.
//      117  Drum_000/063_Conga_High_2_Open.pat
//# Program  SynthTom (gus syntom; old name: SynthTom).  Using CongaHi.
//      118  Drum_000/063_Conga_High_2_Open.pat
//# Program  RevCymbl (gus revcym; old name: RevCymbal).  Using nothing.
//#     119
//
//
//# Family: Effects (Sound Effects)
//
//# Program  FretNoiz (gus fx-fret; old name: FretNoise).
//      120  Tone_000/120_Guitar_Fret_Noise.pat
//# Program  BrthNoiz (gus fx-blow; old name: NoiseChiff).  Using nothing.
//#     121
//# Program  Seashore (gus seashore; old name: Seashore)
//      122  Tone_000/122_Seashore.pat
//# Program  Tweet (gus jungle; old name: Birds).  Using nothing.
//#     123  
//# Program  Telphone (gus telephon; old name: Telephone).  Using nothing.
//#     124  
//# Program  Helicptr (gus helicptr; old name: Helicopter)
//      125  Tone_000/125_Helicopter.pat
//# Program  Applause (gus applause; old name: Stadium!!). Using nothing.
//#     126  
//# Program  Gunshot (gus pistol; old name: Gunshot).  Using Seashore.
//      127  Tone_000/122_Seashore.pat
//
//
//# Drumset 0: Percussive 1-based patches (only 35-81 are part of general midi)
//drumset 0
//
//# COMMON EXTENSIONS TO GENERAL MIDI DRUMSET 0 (notes 25-34)
//# Program  Snare Roll
//#      25  025_Snare_Roll.pat (unavailable)
//# Program  Snap
//#      26  026_Snap.pat (unavailable)
//# Program  High_Q
//#      27  027_High_Q.pat (unavailable)
//# Program  Slap (gus slap)
//#      28  028_Slap.pat (unavailable)
//# Program  Scratch1 (gus scratch1)
//#      29  029_Scratch_1_push.pat (unavailable)
//# Program  Scratch2 (gus scratch2)
//#      30  030_Scratch_2_pull.pat (unavailable)
//# Program  Sticks (gus sticks)
//#      31  031_Sticks.pat (unavailable)
//# Program  Square Click (gus SqrClick)
//#      32  032_square_click.pat (unavailable)
//# Program  Metronome Click (gus metclick)
//#      33  033_Metronome_Click (unavailable)
//# Program  Metronome Bell (gus metbell)
//#      34  034_Metronome_Bell.pat (unavailable)
//
//# BEG GENERAL MIDI DRUMSET 0
//# Program  Acoustic Kick/Acoustic Bass Drum (gus kick1)
//       35  Drum_000/035_Kick_1.pat
//# Program  Kick 1/Bass Drum 1 (gus kick2)
//       36  Drum_000/036_Kick_2.pat
//# Program  Side Stick (gus stickrim)
//       37  Drum_000/037_Stick_Rim.pat 
//# Program  Snare 1/Acoustic Snare (gus snare1)
//       38  Drum_000/038_Snare_1.pat
//# Program  Hand Clap (gus claps)
//       39  Drum_000/039_Clap_Hand.pat
//# Program  Snare 2/Electric Snare (gus snare2)
//       40  Drum_000/040_Snare_2.pat
//# Program  Low Tom 2/Low Floor Tom (gus tomlo2)
//       41  Drum_000/041_Tom_Low_2.pat
//# Program  Closed HiHat (gus hihatcl)
//       42  Drum_000/042_Hi-Hat_Closed.pat
//# Program  Low Tom 1/High Floor Tom (gus tomlo1)
//       43  Drum_000/043_Tom_Low_1.pat
//# Program  Pedal HiHat (gus hihatpd)
//       44  Drum_000/044_Hi-Hat_Pedal.pat
//# Program  Mid Tom 2/Low Tom (gus tommid2)
//       45  Drum_000/045_Tom_Mid_2.pat
//# Program  Open HiHat (gus hihatop)
//       46  Drum_000/046_Hi-Hat_Open.pat
//# Program  Mid Tom 1/Low-Mid Tom (gus tommid1)
//       47  Drum_000/047_Tom_Mid_1.pat
//# Program  High Tom 2/Hi-Mid Tom (gus tomhi2)
//       48  Drum_000/048_Tom_High_2.pat
//# Program  Crash Cymbal 1 (gus cymcrsh1)
//       49  Drum_000/049_Cymbal_Crash_1.pat
//# Program  High Tom 1 (gus tomhi1)
//       50  Drum_000/050_Tom_High_1.pat
//# Program  Ride Cymbal 1 (gus cymride1)
//       51  Drum_000/051_Cymbal_Ride_1.pat
//# Program  Chinese Cym.  (gus cymchina)
//       52  Drum_000/052_Cymbal_Chinese.pat
//# Program  Ride Bell (gus cymbell)
//       53  Drum_000/053_Cymbal_Ride_Bell.pat
//# Program  Tambourine (gus tamborin)
//#          Tombourine [sic]; the patch is misspelled, so the reference must be.
//       54  Drum_000/054_Tombourine.pat
//# Program  Spash Cymbal (gus cymsplsh)
//       55  Drum_000/055_Cymbal_Splash.pat
//# Program  Cowbell (gus cowbell)
//       56  Drum_000/056_Cow_Bell.pat
//# Program  Crash Cymbal 2 (gus cymcrsh2)
//       57  Drum_000/057_Cymbal_Crash_2.pat
//# Program  Vibra-slap (gus vibslap)
//       58  Drum_000/058_Vibra-Slap.pat 
//# Program  Ride Cymbal 2 (gus cymride2)
//       59  Drum_000/059_Cymbal_Ride_2.pat
//# Program  High Bongo (gus bongohi)
//       60  Drum_000/060_Bongo_High.pat
//# Program  Low Bongo (gus bongolo)
//       61  Drum_000/061_Bongo_Low.pat
//# Program  MuteHi Conga (gus congahi1)
//       62  Drum_000/062_Conga_High_1_Mute.pat
//# Program  OpenHi Conga (gus congahi2)
//       63  Drum_000/063_Conga_High_2_Open.pat
//# Program  Low Conga (gus congalo)      
//       64  Drum_000/064_Conga_Low.pat
//# Program  High Timbale (gus timbaleh)
//       65  Drum_000/065_Timbale_High.pat 
//# Program  Low Timbale (gus timbalel)
//       66  Drum_000/066_Timbale_Low.pat 
//# Program  High Agogo (gus agogohi)
//       67  Drum_000/067_Agogo_High.pat 
//# Program  Low Agogo (gus agogolo)
//       68  Drum_000/068_Agogo_Low.pat
//# Program  Cabasa (gus cabasa)
//       69  Drum_000/069_Cabasa.pat
//# Program  Maracas (gus maracas)
//       70  Drum_000/070_Maracas.pat
//# Program  High Whistle/Short Whistle (gus whistle1)
//       71  Drum_000/071_Whistle_1_High_Short.pat 
//# Program  Low Whistle/Long Whistle (gus whistle2)
//       72  Drum_000/072_Whistle_2_Low_Long.pat 
//# Program  Short Guiro (gus guiro1)
//       73  Drum_000/073_Guiro_1_Short.pat
//# Program  Long Guiro (gus guiro2)
//       74  Drum_000/074_Guiro_2_Long.pat
//# Program  Claves (gus clave)
//       75  Drum_000/075_Claves.pat
//# Program  Hi WoodBlock (gus woodblk1)
//       76  Drum_000/076_Wood_Block_1_High.pat 
//# Program  Low WoodBlock (gus woodblk2)
//       77  Drum_000/077_Wood_Block_2_Low.pat
//# Program  Mute Cuica (gus cuica1)
//       78  Drum_000/078_Cuica_1_Mute.pat
//# Program  Open Cuica (gus cuica2)
//       79  Drum_000/079_Cuica_2_Open.pat
//# Program  Mute Triangle (gus triangl1)
//       80  Drum_000/080_Triangle_1_Mute.pat 
//# Program  Open Triangle (gus triangl2)
//       81  Drum_000/081_Triangle_2_Open.pat
//# END GENERAL MIDI DRUMSET 0
//
//# COMMON EXTENSIONS TO GENERAL MIDI DRUMSET 0 (notes 82-87)
//# Program  Shaker (gus shaker)
//#      82  082_Shaker.pat (unavailable)
//# Program  Jingles (gus jingles)
//#      83  083_Jingle_Bell.pat (unavailable)
//# Program  Belltree (gus belltree)
//#      84  084_Belltree.pat (unavailable)
//# Program  Castinet (gus castinet)
//#      85  085_Castinet.pat (unavailable)
//# Program  Surdo1 (gus surdo1)
//#      86  086_Surdo_1_Mute.pat (unavailable)
//# Program  Surdo2 (gus surdo2)
//#      87  087_Surdo_2_Open.pat (unavailable)
