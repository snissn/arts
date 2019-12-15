pragma solidity ^0.4.14;

contract Art{

    string title;
    string description;
    address owner;


    function Art(string _title, string _description, address _owner ){
        title = _title;
        description=_description;
        owner=_owner;
    }
    function get_title() returns (string){
        return title;
    }
    function get_description()returns (string){
        return description;
    }
        function get_owner()returns (address){
        return owner;
    }
}



contract Arts {

/*
    struct Art {
        string title;   // short name (up to 32 bytes)
        string description;
        address owner;
    }
    */
    uint256 public arts_count;
    address[] arts_list;

    function create_art(string title, string description) {
       address art = address(new Art({_title:title, _description:description, _owner:msg.sender}));
       //Art memory art = Art({title:title, description:description, owner:msg.sender});
       arts_count+=1;
       arts_list.push(art);
    }

    function get_arts_count() public returns (uint256) {
        return arts_list.length;
    }
    
    
    function get_art_title(uint256 index) public returns (string) {
        Art  art = Art(arts_list[index]);
        return art.get_title();
        
    }
    function get_art_description(uint256 index) public returns (string) {

                Art  art = Art(arts_list[index]);
        return art.get_description();
    }
    function get_art_owner(uint256 index) public returns (address) {
  
                Art  art = Art(arts_list[index]);
        return art.get_owner();
    }


}


