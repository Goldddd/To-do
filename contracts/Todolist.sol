// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract Todolist{ 
    //create todolist 
    // read list
    //update list 
    //delete list

    struct Todo{
        string task;
        bool completed;

    }
    mapping(address=> Todo) public todo;

    Todo[] public todos;

    function createlist(string memory _task) public {
        todos.push(Todo({
            task: _task,
            completed: false
        }));

    }
    
    function readlist(uint index) public view returns(string memory){
        return todos[index].task;
        
    }
    function updatelist(uint index,string memory _task) public{
        Todo storage routine = todos[index];
        routine.task = _task;
    }
    function deletelist(uint index) public{
        delete todos[index].task;
    }
}