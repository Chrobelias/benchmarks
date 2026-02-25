(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (re.union (re.* (re.range "3" "6")) (str.to_re "48")) (str.to_re "959")))))

(assert (< (+ (* (- 7) (str.len x)) (str.to_int x)) 5))
(assert (<= (* (- 5) (str.len x)) 91))

(check-sat)