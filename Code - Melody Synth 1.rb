use_bpm 140

live_loop :melody do
  sleep 1
  4.times do
    tick
    with_fx :gverb, room: 50, mix: 0.7 do
      with_fx :echo, phase: 0.5, decay: 4, mix: 1 do
        ##| synth :cnoise, release: rrand(0.15,0.25), amp: 1.1, env_curve: 3, res: 0.33, cutoff: rrand(110,115)
        synth :dsaw, note: ring(65,68,63,63).tick(:ii)-0, sustain: 0, release: 0.2, detune: 0.2, amp: 2, cutoff: 125
      end
      sleep ring(0.75,0.75,1,1).look*2
    end
  end
end
