(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z a) (str.++ "75" x y)))

(assert (str.in_re y (re.++ (re.* (re.union (str.to_re "48") (str.to_re "940"))) (re.range "0" "9"))))
(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "84")) (re.range "3" "5")))))
(assert (str.in_re a (re.+ (re.* (re.* (re.range "6" "9"))))))
(assert (str.in_re z (re.+ (re.union (re.range "4" "6") (re.union (str.to_re "35") (re.+ (re.range "7" "9")))))))

(assert (= (+ (- (str.len x)) (* (- 5) (str.len y)) (* (- 8) (str.len z)) (* 9 (str.len a))) 77))
(assert (= (+ (* (- 5) (str.to_int x)) (* 5 (str.to_int y)) (* 5 (str.to_int z)) (str.to_int a)) 16))

(check-sat)