#! /usr/bin/env ruby

mate = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
me = 8

def battle (me, oppo)
  winrate = me / (me + oppo)
  dice = rand
  return true if (dice < winrate)  # win
  return false
end

10.times{
  oppo = mate.sample
  if battle(me, oppo)
    print "win" 
  else
    print "lose"
  end
}
