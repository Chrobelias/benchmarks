(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (re.+ (re.range "3" "8")) (str.to_re "15"))))
(assert (str.in_re x (re.+ (re.union (re.range "6" "8") (re.+ (re.range "1" "5"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "81")) (re.range "1" "6"))))

(assert (< (+ (* (- 3) (str.len x)) (* (- 6) (str.len y)) (* (- 7) (str.len z))) 42))
(assert (< (+ (* 7 (str.to_int x)) (* (- 5) (str.to_int y)) (* 8 (str.to_int z))) 96))

(check-sat)