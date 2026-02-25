(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "378") (str.to_re "0"))))))

(assert (= (+ (* 6 (str.len x)) (* 5 (str.to_int x))) 81))
(assert (< (* (- 6) (str.to_int x)) 91))
(assert (< (+ (* 9 (str.len x)) (* (- 4) (str.to_int x))) 42))

(check-sat)