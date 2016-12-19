(
SynthDef(\sa0253, {|t_tr=0 f1=300 f2=310 f3=377 r1=1 r2=2 r3=0.77|
	Out.ar(0, Mix.ar([
		CombC.ar(t_tr, 0.2, 1.0/f1, r1),
		CombC.ar(t_tr, 0.2, 1.0/f2, r2),
		CombC.ar(t_tr, 0.2, 1.0/f3, r3)
	]))
}).add;

)

a = Synth(\sa0253);
a.set(\t_tr, 1);