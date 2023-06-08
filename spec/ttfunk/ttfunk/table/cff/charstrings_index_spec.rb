# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TTFunk::Table::Cff do
  let(:font_path) { test_font('NotoSansCJKsc-Thin', :otf) }
  let(:font) { TTFunk::File.open(font_path) }
  let(:charstrings_index) { font.cff.top_index[0].charstrings_index }

  it 'constructs the correct path for a Hiragana character' do
    path = charstrings_index[65_500].path

    expect(path.commands).to eq(
      [
        [:move, 525, 742],
        [:line, 488, 757],
        [:curve, 482, 741, 474, 726, 464, 706],
        [:curve, 411, 612, 180, 202, 110, 5],
        [:line, 143, -7],
        [:curve, 155, 37, 204, 157, 236, 216],
        [:curve, 275, 290, 365, 379, 455, 379],
        [:curve, 508, 379, 538, 350, 540, 300],
        [:curve, 543, 233, 540, 162, 543, 102],
        [:curve, 545, 58, 562, -9, 662, -9],
        [:curve, 794, -9, 867, 97, 920, 242],
        [:line, 893, 263],
        [:curve, 870, 176, 797, 21, 665, 21],
        [:curve, 614, 21, 575, 46, 573, 104],
        [:curve, 571, 157, 572, 229, 570, 300],
        [:curve, 568, 371, 519, 410, 462, 410],
        [:curve, 406, 410, 347, 385, 289, 324],
        [:curve, 342, 425, 455, 629, 494, 694],
        [:curve, 505, 715, 518, 733, 525, 742],
        [:close],
        [:move, 757, 694],
        [:line, 731, 681],
        [:curve, 756, 644, 803, 564, 824, 526],
        [:line, 853, 541],
        [:curve, 831, 578, 781, 660, 757, 694],
        [:close],
        [:move, 868, 737],
        [:line, 843, 723],
        [:curve, 869, 688, 916, 613, 938, 572],
        [:line, 967, 587],
        [:curve, 942, 629, 893, 704, 868, 737],
        [:close]
      ]
    )
  end

  it 'constructs the correct path for a Hangul character' do
    path = charstrings_index[64_970].path

    expect(path.commands).to eq(
      [
        [:move, -720, 78],
        [:line, -568, 78],
        [:line, -568, 235],
        [:line, -756, 235],
        [:line, -756, 205],
        [:line, -601, 205],
        [:line, -601, 107],
        [:line, -753, 107],
        [:line, -753, -59],
        [:line, -725, -59],
        [:curve, -686, -59, -633, -59, -553, -44],
        [:line, -557, -15],
        [:curve, -630, -28, -683, -29, -720, -29],
        [:close],
        [:move, -546, 205],
        [:line, -395, 205],
        [:line, -395, -65],
        [:line, -362, -65],
        [:line, -362, 235],
        [:line, -546, 235],
        [:close],
        [:move, -229, -39],
        [:curve, -270, -39, -295, -5, -295, 42],
        [:curve, -295, 90, -270, 123, -229, 123],
        [:curve, -187, 123, -162, 90, -162, 42],
        [:curve, -162, -5, -187, -39, -229, -39],
        [:close],
        [:move, -229, 151],
        [:curve, -279, 151, -325, 110, -325, 42],
        [:curve, -325, -26, -279, -66, -229, -66],
        [:curve, -178, -66, -132, -26, -132, 42],
        [:curve, -132, 110, -178, 151, -229, 151],
        [:close],
        [:move, -213, 206],
        [:line, -213, 249],
        [:line, -246, 249],
        [:line, -246, 206],
        [:line, -332, 206],
        [:line, -332, 176],
        [:line, -127, 176],
        [:line, -127, 206],
        [:close]
      ]
    )
  end

  it 'constructs the correct path for a complex Han character' do
    path = charstrings_index[28_487].path

    expect(path.commands).to eq(
      [
        [:move, 132, 641],
        [:line, 871, 641],
        [:line, 871, 531],
        [:line, 900, 531],
        [:line, 900, 670],
        [:line, 508, 670],
        [:line, 508, 739],
        [:line, 832, 739],
        [:line, 832, 768],
        [:line, 508, 768],
        [:line, 508, 831],
        [:line, 479, 831],
        [:line, 479, 670],
        [:line, 103, 670],
        [:line, 103, 531],
        [:line, 132, 531],
        [:close],
        [:move, 654, 505],
        [:curve, 725, 474, 809, 427, 853, 393],
        [:line, 873, 417],
        [:curve, 829, 452, 744, 497, 674, 525],
        [:close],
        [:move, 305, 528],
        [:curve, 258, 481, 183, 438, 113, 408],
        [:curve, 120, 403, 133, 392, 137, 388],
        [:curve, 205, 419, 284, 469, 334, 520],
        [:close],
        [:move, 290, 335],
        [:curve, 373, 381, 444, 439, 495, 505],
        [:curve, 553, 429, 623, 376, 703, 335],
        [:close],
        [:move, 270, 5],
        [:line, 270, 87],
        [:line, 729, 87],
        [:line, 729, 5],
        [:close],
        [:move, 270, 197],
        [:line, 729, 197],
        [:line, 729, 116],
        [:line, 270, 116],
        [:close],
        [:move, 729, 226],
        [:line, 270, 226],
        [:line, 270, 306],
        [:line, 729, 306],
        [:close],
        [:move, 805, 549],
        [:line, 805, 578],
        [:line, 200, 578],
        [:line, 200, 549],
        [:line, 493, 549],
        [:curve, 406, 420, 246, 322, 53, 271],
        [:curve, 60, 266, 68, 255, 72, 247],
        [:curve, 131, 264, 187, 284, 241, 310],
        [:line, 241, -71],
        [:line, 270, -71],
        [:line, 270, -24],
        [:line, 729, -24],
        [:line, 729, -67],
        [:line, 758, -67],
        [:line, 758, 310],
        [:curve, 811, 287, 869, 269, 929, 253],
        [:curve, 933, 263, 941, 274, 949, 280],
        [:curve, 765, 326, 616, 387, 512, 527],
        [:curve, 518, 534, 522, 542, 527, 549],
        [:close]
      ]
    )
  end
end
