type node = string
type edges = node*(node list)
type state = Continue | Done


type rWalk = node list* state * node
module NodeH = struct
    type t = node
    let hash s1 = Hashtbl.hash s1
    let equal s1 s2 = String.compare s1 s2 = 0
end

module Network = Hashtbl.Make(NodeH)
type network = string list Network.t

let module 
module NodeH = struct
    type t = node * node
    let hash s = let (s1, s2) = s in Hashtbl.hash s1^s2
    let equal a b = 
        let (a1, a2) = a and (b1, b2) = b in 
        String.compare s1^s2 s2 = 0
end
type w_ij = (node, node)
type W = int W.t