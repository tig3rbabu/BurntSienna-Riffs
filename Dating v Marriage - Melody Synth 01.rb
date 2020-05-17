use_bpm 100

transposee = 4

in_thread do
  live_loop :synthy do
    with_fx :gverb, room: 50, mix: 0.4 do
      with_fx :echo, phase: 0.75, decay: 4, mix: 0 do
        with_fx :slicer, phase: 0.25*2, pulse_width: 0.25, wave: 0 do
          se = synth :dsaw, note: :b3+0-transposee, attack: 20, sustain: 7, release: 10, amp: 0.5
          sleep 32
        end
      end
    end
  end
end
