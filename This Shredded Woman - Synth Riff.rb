use_bpm 140

live_loop :boomboompow do
  with_fx :gverb, room: 60, release: 5, mix: 0.3 do
    with_fx :lpf, cutoff: 125, amp: 1.5 do
      with_fx :echo, phase: 0.75, decay: 12*1, mix: 0.4 do
        8.times do
          tick(:i)
          synth :dsaw, note: 56+0 , amp: 1.5, release: 0.25*1 if spread(5,32).look(:i)
          synth :dsaw, note: ring(54).choose+12, amp: 1, release: 0.25*1 if spread(6,32, rotate: 2).look(:i)
          synth :dsaw, note: ring(47,49).choose+24, amp: 1.5, release: 0.25, detune: 0.3 if spread(3,32).look(:i)
          sleep 0.5
        end
      end
    end
  end
end

##| play with echo-phase value (0.25,0.5,0.75,1,2,3,etc)
##| play with the note values
##| play with the first integer in the spread function (numbers less than 32)
