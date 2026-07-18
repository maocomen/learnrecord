
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let m = nums1.count
    let n = nums2.count
    let left = (m + n + 1) / 2
    let right = (m + n + 2) / 2
    return (findKth(nums1: nums1, start1: 0, nums2: nums2, start2: 0, end: left) + findKth(nums1: nums1, start1: 0, nums2: nums2, start2: 0, end: right)) / 2.0
}

func findKth(nums1: [Int], start1: Int, nums2: [Int], start2: Int, end: Int) -> Double {
    if start1 >= nums1.count { return Double(nums2[start2 + end - 1]) }
    if start2 >= nums2.count { return Double(nums1[start1 + end - 1]) }
    if end == 1 {
        return Double(min(nums1[start1], nums2[start2]))
    }
    let midVal1 = (start1 + end / 2 - 1) < nums1.count ? nums1[start1 + end / 2 - 1] : Int.max
    let midVal2 = (start2 + end / 2 - 1) < nums2.count ? nums2[start2 + end / 2 - 1] : Int.max
    if midVal1 < midVal2 {
        return findKth(nums1: nums1, start1: start1 + end / 2, nums2: nums2, start2: start2, end: end - end / 2)
    } else {
        return findKth(nums1: nums1, start1: start1, nums2: nums2, start2: start2 + end / 2, end: end - end / 2)
    }
}
