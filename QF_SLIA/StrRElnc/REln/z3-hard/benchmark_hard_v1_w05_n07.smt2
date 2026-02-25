(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.+ (re.+ (re.range "3" "6")))) (str.to_re "788"))))

(assert (> (+ (- (str.len x)) (* 4 (str.to_int x))) 90))
(assert (>= (* 8 (str.to_int x)) 87))
(assert (<= (+ (* (- 9) (str.len x)) (str.to_int x)) 43))

(check-sat)