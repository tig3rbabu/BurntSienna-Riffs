use_bpm 105

live_loop :synth2 do
  with_fx :gverb, room: 70, release: 4, mix: 0.2 do
    with_fx :wobble, phase: 0.25*3, cutoff_max: 90, cutoff_min: 40, wave: 0, mix: 1 do
      6.times do
        tick
        synth :dsaw, note: ring(60,60-12,60+5,60-5,60-2,60+2).look+12, attack: 0, sustain: 0, release: 1, amp: 6, cutoff: 120, detune: 0.3
        sleep ring(3.5,5.5,2.5,1.5,1.5,1.5).look
      end
    end
  end
end





