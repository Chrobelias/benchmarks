(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (re.+ (re.* (re.+ (str.to_re "748")))) (str.to_re "92"))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "68")) (str.to_re "964"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "56")) (re.+ (re.* (str.to_re "5"))))))

(assert (<= (+ (* (- 9) (str.len x)) (* 4 (str.len y)) (* 6 (str.len z))) 40))
(assert (= (+ (* 2 (str.len x)) (* (- 6) (str.len y)) (* (- 2) (str.len z))) 96))
(assert (< (+ (* 3 (str.to_int x)) (* 2 (str.to_int z))) 74))

(check-sat)