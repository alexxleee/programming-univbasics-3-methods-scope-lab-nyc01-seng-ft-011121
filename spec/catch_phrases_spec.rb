require 'spec_helper'

describe "mario" do
  it "puts out 'It's-a me, Mario!'" do
    phrase = "It's-a me, Mario!"
    expect{mario}.to output("It's-a me, Mario!\n").to_stdout
  end
end

describe "toadstool" do
  it "puts out 'Thank You Mario! But Our Princess Is In Another Castle!'" do
    status = "Thank You Mario! But Our Princess Is In Another Castle!"
    expect{toadstool}.to output("Thank You Mario! But Our Princess Is In Another Castle!\n").to_stdout
  end
end

describe "link" do
  it "puts out 'It's Dangerous To Go Alone! Take This.'" do
    phrase1 = "It's Dangerous To Go Alone! Take This."
    expect{link}.to output("It's Dangerous To Go Alone! Take This.\n").to_stdout
  end
end

describe "all_phrases" do
  it "puts out all of the previous catch phrases" do
    expect{all_phrases}.to output(/It's-a me, Mario!\n/).to_stdout
    expect{all_phrases}.to output(/Thank You Mario! But Our Princess Is In Another Castle!\n/).to_stdout
    expect{all_phrases}.to output(/It's Dangerous To Go Alone! Take This.\n/).to_stdout
  end
end