//Designing Sounds w/Signal Processing
////Impluse Based Inputs

//Basic Triggered Impulse Template

(
//Using Impulse Ugen
//Using the impulse Ugen you generate a single sample
//impulse at a regular rate determined by the freq argument
//Here the
SynthDef( \imp_t, {
	arg rate=2;
	var imp, fx;
	imp = Impulse.ar(rate);
	fx = RLPF.ar(imp, 200);
	Out.kr

}).add;
)


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