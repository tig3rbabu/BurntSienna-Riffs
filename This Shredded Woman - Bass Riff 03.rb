use_bpm 140

live_loop :boomboompow do
  with_fx :lpf, cutoff: 60, cutoff_slide: 36, mix: 0 do |t|
    control t, cutoff: 120
    12.times do
      with_fx :gverb, room: 60, release: 1, mix: 0.2 do
        with_fx :slicer, phase: 0.25*3, wave: 1, pulse_width: 0.666, mix: 1 do
          tick(:ii)
          synth :dsaw, note: ring(56,54,54,52,52,54,54,52,54,52,49,49).look(:ii)-12, amp: 2, sustain: 4, release: 0, detune: 0.3
          synth :fm, note: ring(56,54,54,52,52,54,54,52,54,52,49,49).look(:ii)-12, amp: 2, sustain: 4, release: 0, depth: 3
          ##| synth :dpulse, note: ring(56,54,54,52,52,54,54,52,54,52,49,49).look(:ii)-12, amp: 2, detune: 16, sustain: 4, cutoff: 85
        end
      end
      sleep 4
    end
  end
end
