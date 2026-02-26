(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))

(assert (= z (str.++ "58" y a "76" "91" x)))

(assert (str.in_re z (re.* (re.range "1" "9"))))
(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "6")) (str.to_re "175")) (str.to_re "2"))))
(assert (str.in_re x (re.* (re.++ (re.* (re.+ (str.to_re "65"))) (str.to_re "21")))))
(assert (str.in_re a (re.++ (str.to_re "98") (re.union (re.range "3" "7") (re.+ (str.to_re "8"))))))

(assert (> (+ (* 10 (str.len x)) (* (- 10) (str.len y)) (- (str.len z)) (* 4 (str.len a))) 11))
(assert (> (+ (* 3 (str.to_int x)) (- (str.to_int y)) (* (- 3) (str.to_int z)) (* 3 (str.to_int a))) 56))

(check-sat)