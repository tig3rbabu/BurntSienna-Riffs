use_bpm 240

in_thread do
  live_loop :bassriff do
    with_fx :gverb, room: 70, release: 4, mix: 0.4, amp: 1 do
      with_fx :distortion, distort: 0.9, mix: 1 do
        with_fx :slicer, phase: 1.5*1, wave: 1, pulse_width: 0.666, smooth_down: 0, mix: 1 do
          a = 12*1
          t = synth :dsaw, note: 57-a, note_slide: 1, detune: 4, sustain: 16, release: 0, amp: 1, cutoff: 110
          4.times do
            tick
            control t, note: ring(57,64,60,62,64,60,62,57).look-a
            sleep ring(3,3,3,7).look
          end
        end
      end
    end
  end
end


