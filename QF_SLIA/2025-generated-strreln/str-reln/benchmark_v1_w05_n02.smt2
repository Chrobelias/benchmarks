(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.range "4" "7") (re.+ (str.to_re "76")))))

(assert (> (+ (* 4 (str.len x)) (* (- 3) (str.to_int x))) 41))
(assert (<= (* 8 (str.to_int x)) 39))
(assert (<= (str.to_int x) 83))
(assert (< (- (str.len x)) 20))

(check-sat)