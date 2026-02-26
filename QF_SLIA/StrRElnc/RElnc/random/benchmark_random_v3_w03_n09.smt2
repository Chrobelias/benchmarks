(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ "66" y)))

(assert (str.in_re y (re.* (re.union (re.range "6" "9") (re.union (str.to_re "95") (re.range "1" "9"))))))
(assert (str.in_re z (re.* (re.union (re.range "0" "9") (re.union (re.+ (str.to_re "680")) (str.to_re "16"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "92") (str.to_re "5")))))

(assert (<= (+ (* (- 6) (str.len x)) (* (- 8) (str.len y)) (* 8 (str.len z))) 83))
(assert (<= (+ (* 6 (str.len x)) (* (- 7) (str.len y)) (* (- 4) (str.len z))) 26))
(assert (>= (+ (* (- 4) (str.to_int y)) (* 9 (str.to_int z))) 66))

(check-sat)