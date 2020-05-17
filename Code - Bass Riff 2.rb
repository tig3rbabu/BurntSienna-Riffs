use_bpm 140

live_loop :bass do  
  with_fx :slicer, phase: 0.5, wave: 0, mix: 1 do    
    synth :dsaw, note: ring(65,68,63,63).tick(:ii)-36, sustain: 8, release: 0, detune: 0.3, amp: 6, cutoff: 125
    sleep 8
  end
end
