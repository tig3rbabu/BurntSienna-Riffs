use_bpm 100

transposee = 4

live_loop :bass do
  with_fx :gverb, room: 60, mix: 0.2 do
    with_fx :slicer, phase: 0.25, wave: 0 do
      a = choose([0.75,0.5])
      tick
      synth :dpulse, note: knit(:e2,3,:b2,3,:a2,3,:d2+12,3).look-12-transposee, sustain: 0.75, release: 1, amp: 4, detune: 12, cutoff: 110
      ##| synth :fm, note: knit(:e2+12,3,:b2,3,:a2,3,:d2+12,3).look-transposee+0, sustain: a, release: 0, amp: 5, depth: 2
    end
    sleep ring(0.75,0.75,0.5).look
    synth :sine, note: :b3-transposee, sustain: 0.25, release: 0, amp: 4
    sleep ring(0.75,0.75,0.5).look
  end
end
