#
#  sorting.rb
#  Algorithms
#
#  Created by duy_bq on 2014-07-09.
#  Copyright 2014 Septeni Technology. All rights reserved.
#
class Sorting
  ## function bubble_sort
  ## Step1: Look at the first two items in the list.
  ## Step2: If the first item is greater, then swap the items.
  ## Step3: Now compare the second and third items in the same way.
  ## Step4: Continue doing this until we get to the end of the list - 1.
  ## Step5: Repeat the whole process n times (where n is the length of our list).
  def bubble_sort(_list)
    _list.each_index do |i|
      (_list.length - i - 1).times do |job|
        if _list[job] > _list[job + 1]
          _list[job], _list[job + 1] = _list[job + 1], _list[job]
        end
      end
    end
    _list
  end
  ## function selection_sort
  # @param: list need sort
  # @return: list be sorted
  def selection_sort(_list)
    (1.._list.length - 1).each do |i|
      p "Step #{i}"
      value = _list[i]
      j = i - 1
      while j >= 0 && _list[j] > value
        _list[j + 1] = _list[j]
        p "J ==> #{j}"
        j -= 1
      end
      _list[j + 1] = value
    end
    _list
  end
end

sorting = Sorting.new
p _list = [3,2,5,9,6]
p 'Bubble sort'
p sorting.bubble_sort(_list)
p 'Selection sort'
p _list = [3,2,5,9,6]
p sorting.selection_sort(_list)