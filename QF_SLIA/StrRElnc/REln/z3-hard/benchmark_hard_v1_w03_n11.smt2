(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.range "7" "9")) (re.* (str.to_re "67")))))

(assert (< (+ (* 10 (str.len x)) (- (str.to_int x))) 79))
(assert (< (* 9 (str.to_int x)) 55))

(check-sat)