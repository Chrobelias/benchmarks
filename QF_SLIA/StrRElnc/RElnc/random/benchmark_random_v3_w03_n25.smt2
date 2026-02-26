(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x y "55" "97")))

(assert (str.in_re z (re.union (re.* (re.range "3" "9")) (re.union (re.+ (str.to_re "2")) (re.range "7" "9")))))
(assert (str.in_re x (re.++ (re.* (re.++ (re.range "5" "9") (str.to_re "53"))) (re.range "1" "5"))))
(assert (str.in_re y (re.union (re.+ (re.range "0" "7")) (str.to_re "441"))))

(assert (> (+ (* (- 6) (str.len x)) (* 7 (str.len y)) (* 8 (str.len z))) 94))
(assert (<= (+ (* 4 (str.len y)) (* (- 4) (str.to_int z))) 12))

(check-sat)