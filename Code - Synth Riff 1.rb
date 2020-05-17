use_bpm 140

live_loop :shimmy do
  with_fx :gverb, room: 60, release: 4, mix: 0.4 do
    with_fx :slicer, phase: 0.25*1, wave: 1, pulse_width: 0.25, phase_offset: 0.0, mix: 0 do
      4.times do
        tick
        synth :zawa, note: ring(72,70,69,65,65,65,72,74,75,74,72,68,74,65,72,70).look+0, sustain: 8, release: 0, detune: 0.3, amp: 0.2
      end
      sleep 8
    end
  end
end
