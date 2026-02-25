(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (re.range "4" "9") (re.union (str.to_re "33") (str.to_re "886"))))))

(assert (>= (+ (* 5 (str.len x)) (* 5 (str.to_int x))) 7))

(check-sat)