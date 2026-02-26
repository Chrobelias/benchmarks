(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ y x "82" "79")))

(assert (str.in_re y (re.union (re.* (re.+ (re.range "1" "4"))) (str.to_re "132"))))
(assert (str.in_re z (re.* (re.union (re.* (re.range "4" "9")) (str.to_re "2")))))
(assert (str.in_re x (re.* (re.++ (re.range "0" "2") (str.to_re "89")))))

(assert (> (+ (* 4 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 10) (str.to_int z))) 88))
(assert (< (+ (* 10 (str.len x)) (- (str.to_int y)) (* (- 6) (str.to_int z))) 97))

(check-sat)