=begin
min([64, 25,12,22,11], 1,4);
var list = [64, 25,12,22,11];
selectionSort(list);
console.log(list);
=end

class SelectionSort
  def sort(list)
    endIdx = list.length-1
    for i in 0..endIdx
      minIdx = indexForMinValue(list, i, endIdx)
      swap(list, i, minIdx) if (list[i] > list[minIdx])      
    end  
  end

  private

  def min(list, startIndex, endIndex)
    min = list[startIndex]
    for i in startIndex .. endIndex
      min = list[i] if list[i] < min
    end
    min
  end
    
  def indexForMinValue(list, startIdx, endIdx)
    minIdx = startIdx;
    for i in startIdx..endIdx
        minIdx = i if (list[minIdx] > list[i])
    end
    minIdx
  end
  
  
  def swap(list, index1, index2)
    temp = list[index1]
    list[index1] = list[index2]
    list[index2] = temp
  end


end

=begin
function minIndex(list, start, end) {
  var minIdx = start;
  for (var i = start; i < end;) {
    i++;
    if (list[minIdx] > list[i]) {
      minIdx = i;
    }
  }
  return minIdx;
}

function swap(list, index1, index2) {
  var temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}

function selectionSort(list) {
  for (var i = 0, len = list.length; i < len; i++) {
    var minIdx = minIndex(list, i, len - 1);
    if (list[i] > list[minIdx]) {
      swap(list, i, minIdx);
    }
  }
}
=end