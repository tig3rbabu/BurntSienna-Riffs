use_bpm 105

live_loop :bass do
  with_fx :gverb, room: 60, release: 2, mix: 0.2, amp: 2 do
    tick
    ##| synth :dsaw, note: ring(60,60-2,63-12,60-7,60,60-2,60-9,60-5).look-24, detune: 0.3, sustain: 4, amp: 3, cutoff: 60
    tt = ring(0,0,2.5,2.25,1.5,1.75,1.5,2.25).look
    sleep tt
    synth :fm, note: ring(60,60-2,63-12,nil,60,60-2,60-9,60-5).look-12, depth: 3, attack: 0, release: ring(0.5,0.75,1,0.5,0.75,0.75,0.5,0.5).look, amp: 7
    sleep 3.25-tt
    synth :fm, note: ring(60-5,nil,60-12,65-12,nil,60-12,nil,60-9).look-12, depth: 3, attack: 0, release: ring(0.5,0.75,1,0.5).look, amp: 7
    sleep 0.75
  end
end





