(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ "48" z x "84" "25" y)))

(assert (str.in_re y (re.* (re.union (re.++ (re.* (str.to_re "16")) (str.to_re "835")) (str.to_re "5")))))
(assert (str.in_re a (re.* (re.union (re.++ (re.+ (str.to_re "0")) (re.range "4" "8")) (re.range "1" "8")))))
(assert (str.in_re z (re.+ (re.+ (re.++ (re.range "2" "5") (str.to_re "6"))))))
(assert (str.in_re x (re.++ (re.union (re.+ (re.range "5" "7")) (re.range "7" "9")) (str.to_re "6"))))

(assert (> (+ (str.len x) (* (- 6) (str.len y)) (* (- 4) (str.len z)) (* (- 4) (str.len a))) 69))
(assert (< (+ (* 7 (str.to_int x)) (* 7 (str.to_int y)) (* (- 5) (str.to_int z))) 24))

(check-sat)