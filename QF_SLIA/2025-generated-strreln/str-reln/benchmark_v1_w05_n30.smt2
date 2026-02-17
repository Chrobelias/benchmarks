(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (re.range "7" "9") (str.to_re "152")))))

(assert (< (- (str.to_int x)) 84))
(assert (= (+ (* (- 3) (str.len x)) (* 8 (str.to_int x))) 8))
(assert (<= (* (- 7) (str.len x)) 53))
(assert (>= (* 6 (str.len x)) 31))

(check-sat)