(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "67")) (re.range "6" "9")) (re.range "7" "9"))))

(assert (<= (* (- 5) (str.len x)) 91))
(assert (<= (* 4 (str.to_int x)) 49))
(assert (>= (+ (* 7 (str.len x)) (- (str.to_int x))) 17))

(check-sat)