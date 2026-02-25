(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.+ (re.range "1" "9")) (re.++ (re.+ (re.range "2" "6")) (str.to_re "95")))))

(assert (>= (+ (* (- 3) (str.len x)) (- (str.to_int x))) 6))
(assert (< (* 7 (str.len x)) 71))
(assert (>= (* (- 7) (str.len x)) 20))

(check-sat)