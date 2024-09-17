// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InsertionSort {
    // 插入排序函数
    function insertionSort(uint[] memory arr) public pure returns (uint[] memory) {
        uint n = arr.length;
        for (uint i = 1; i < n; i++) {
            uint key = arr[i];
            uint j = i - 1;

            // 将 arr[j] 大于 key 的元素向后移动
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                if (j == 0) break; // 防止下标越界
                j--;
            }
            arr[j + 1] = key;
        }
        return arr;
    }
}