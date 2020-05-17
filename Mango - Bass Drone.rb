use_bpm 105

live_loop :jhaannng do
  with_fx :gverb, room: 45, release: 4, mix: 0.5 do
    with_fx :distortion, distort: 0.9, mix: 0.8 do
      tick
      with_fx :wobble, phase: 64, cutoff_max: 80, cutoff_min: 40, invert_wave: ring(0,1).look , mix: 1 do
        synth :fm, note: octs(36+ring(0,0).look,2), attack: 16, release: 21, cutoff: 120, amp: 1, depth: 5
        sleep 32
      end
    end
  end
end





