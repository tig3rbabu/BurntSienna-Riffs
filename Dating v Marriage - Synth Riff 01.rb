use_bpm 100

transposee = 4

live_loop :airyairy do
  with_fx :gverb, room: 25, mix: 0.5, amp: 1 do
    ##| tick
    3.times do
      synth :zawa, note: ring(:fs3,:b3,:ds4,:fs3,:a3,:d4,:e3,:a3,:cs4,:fs3,:a3,:cs4).tick-transposee+0, sustain: 4, amp: 0.5, range: 15, cutoff: 75
    end
    sleep 4
  end
end



