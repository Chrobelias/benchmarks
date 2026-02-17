(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "38") (re.* (re.++ (re.* (str.to_re "37")) (str.to_re "95"))))))

(assert (< (+ (- (str.len x)) (* 3 (str.to_int x))) 28))
(assert (<= (* (- 4) (str.len x)) 40))

(check-sat)