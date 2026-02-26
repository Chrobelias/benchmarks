(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z "22" x) (str.++ "35" y)))

(assert (str.in_re z (re.union (re.+ (re.+ (re.range "2" "7"))) (str.to_re "73"))))
(assert (str.in_re y (re.+ (re.range "2" "7"))))
(assert (str.in_re x (re.union (re.* (re.range "6" "8")) (re.union (re.+ (str.to_re "58")) (str.to_re "82")))))

(assert (> (+ (* (- 8) (str.to_int x)) (* (- 2) (str.to_int y)) (* 9 (str.to_int z))) 94))
(assert (< (+ (* (- 9) (str.len x)) (* 2 (str.len y)) (* (- 7) (str.len z))) 74))

(check-sat)