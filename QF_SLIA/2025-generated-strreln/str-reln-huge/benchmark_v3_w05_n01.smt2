(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.union (str.to_re "113") (re.+ (re.* (re.* (str.to_re "849")))))))
(assert (str.in_re y (re.union (re.union (re.* (str.to_re "821")) (str.to_re "286")) (re.* (re.range "6" "9")))))
(assert (str.in_re z (re.+ (re.++ (re.* (str.to_re "76")) (str.to_re "87")))))

(assert (>= (+ (* 8 (str.to_int x)) (* (- 8) (str.to_int y)) (* 9 (str.to_int z))) 88))
(assert (> (+ (* (- 4) (str.len x)) (* 2 (str.len y)) (- (str.len z))) 87))
(assert (<= (+ (- (str.len z)) (* (- 10) (str.to_int z))) 81))
(assert (= (+ (- (str.to_int x)) (* (- 5) (str.to_int y)) (* 7 (str.to_int z))) 71))

(check-sat)