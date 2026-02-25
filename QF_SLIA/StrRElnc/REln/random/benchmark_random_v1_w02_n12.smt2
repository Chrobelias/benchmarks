(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.++ (str.to_re "26") (str.to_re "635"))) (str.to_re "4"))))

(assert (< (+ (* 10 (str.len x)) (- (str.to_int x))) 28))

(check-sat)