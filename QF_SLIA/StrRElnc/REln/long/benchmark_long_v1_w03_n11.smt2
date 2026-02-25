(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (str.to_re "2") (re.++ (re.* (str.to_re "690")) (str.to_re "0"))))))

(assert (<= (+ (* 3 (str.len x)) (* 4 (str.to_int x))) 8))
(assert (< (* 3 (str.len x)) 66))

(check-sat)