(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))

(assert (= (str.++ z x) (str.++ a y "81" "97")))

(assert (str.in_re z (re.union (re.* (re.union (re.* (re.range "1" "8")) (str.to_re "465"))) (re.range "0" "2"))))
(assert (str.in_re a (re.++ (re.++ (re.* (str.to_re "24")) (re.range "5" "7")) (re.* (str.to_re "38")))))
(assert (str.in_re y (re.union (re.++ (re.* (str.to_re "7")) (str.to_re "4")) (str.to_re "84"))))
(assert (str.in_re x (re.union (re.+ (re.range "0" "9")) (re.+ (str.to_re "676")))))

(assert (> (+ (* 5 (str.len x)) (* 2 (str.len y))) 4))
(assert (= (+ (* (- 8) (str.to_int x)) (- (str.to_int y)) (* (- 2) (str.to_int z)) (* 2 (str.to_int a))) 22))

(check-sat)