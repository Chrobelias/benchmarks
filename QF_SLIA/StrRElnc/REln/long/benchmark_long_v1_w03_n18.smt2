(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.range "3" "9") (re.* (re.union (str.to_re "2") (str.to_re "4"))))))

(assert (= (+ (* 2 (str.len x)) (* 2 (str.to_int x))) 79))
(assert (>= (str.len x) 19))

(check-sat)