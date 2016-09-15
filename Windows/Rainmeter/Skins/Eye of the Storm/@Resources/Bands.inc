[MeasureAudio1]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 1))
[MeasureArc1]
Measure=Calc
[MeterRoundline1]
Meter=Roundline
MeasureName=MeasureArc1

[MeasureAudio2]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 2))
[MeasureArc2]
Measure=Calc
[MeterRoundline2]
Meter=Roundline
MeasureName=MeasureArc2

[MeasureAudio3]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 3))
[MeasureArc3]
Measure=Calc
[MeterRoundline3]
Meter=Roundline
MeasureName=MeasureArc3

[MeasureAudio4]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 4))
[MeasureArc4]
Measure=Calc
[MeterRoundline4]
Meter=Roundline
MeasureName=MeasureArc4

[MeasureAudio5]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 5))
[MeasureArc5]
Measure=Calc
[MeterRoundline5]
Meter=Roundline
MeasureName=MeasureArc5

[MeasureAudio6]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 6))
[MeasureArc6]
Measure=Calc
[MeterRoundline6]
Meter=Roundline
MeasureName=MeasureArc6

[MeasureAudio7]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 7))
[MeasureArc7]
Measure=Calc
[MeterRoundline7]
Meter=Roundline
MeasureName=MeasureArc7

[MeasureAudio8]
Measure=Plugin
Group=Audio
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=(Abs((#Invert# = 1 ? (#FirstBandIndex# + #Bands# - 1) : 0) - 8))
[MeasureArc8]
Measure=Calc
[MeterRoundline8]
Meter=Roundline
MeasureName=MeasureArc8