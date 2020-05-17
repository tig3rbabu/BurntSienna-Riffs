use_bpm 140

live_loop :bass do
  with_fx :gverb, room: 30, release: 4, mix: 0.4, amp: 0.45 do
    with_fx :slicer, phase: 0.5, wave: 0, mix: 0 do
      with_fx :distortion, distort: 0.8, mix: 1 do
        l = 4
        ##| synth :dsaw, note: ring(65,68,63,63).tick(:ii)-36, sustain: 8, release: 0, detune: 0.3, amp: 6, cutoff: 125
        8.times do
          tick(:i)
          notle = ring(72,70,69,65,65,65,72,74,75,74,72,68,68,68,69,70,72,70,69,65,65,65,65,nil,63,65,nil,nil,nil,nil,nil,nil).look(:i)
          synth :fm, note: notle-24, release: knit(0.35*l,25,3,1,0.35*l,6).look(:i), depth: 5, amp: 3
          synth :dsaw, note: notle-36, release: knit(0.35*l,25,3,1,0.35*l,6).look(:i), detune: 0.3, amp: 9, cutoff: 105, env_curve: 7
          sleep ring(0.75,0.75,0.75,0.25,0.5,0.5,0.25,0.25).look(:i)*2
        end
      end
    end
  end
end