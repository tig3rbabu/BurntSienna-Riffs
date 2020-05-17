use_bpm 105

live_loop :chords do
  with_fx :gverb, room: 60, release: 4, mix: 0.4 do
    y = ring(7,4).tick
    sleep y
    synth :zawa, note: chord(ring(60+12,58+12).look, ring(:minor7,:major7).look)-12, sustain: 1, release: 3, cutoff: 100, amp: 5
    sleep 8-y
  end
end





